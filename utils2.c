/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils2.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bibrahim <bibrahim@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/14 17:41:50 by bibrahim          #+#    #+#             */
/*   Updated: 2022/04/21 23:18:24 by bibrahim         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

int	t_circle(t_p1 **stack, int n)
{
	int	i;

	i = 0;
	while (i < 1)
	{
		if (n > 0)
			n--;
		else
			n = (*stack)->top;
		i++;
	}
	return (n);
}

int	get_max_array(int arr[], int size)
{
	int	i;
	int	max;

	i = 0;
	max = arr[0];
	while (i <= size)
	{
		if (max < arr[i])
			max = arr[i];
		i++;
	}
	return (max);
}

int	get_index_max(int arr[], int size, int n)
{
	int	i;

	i = size;
	while (i >= 0)
	{
		if (arr[i] == n)
			return (i);
		i--;
	}
	return (i);
}

int	is_in_arr(int arr[], int n, int size)
{
	int	i;

	i = 0;
	while (i < size)
	{
		if (arr[i] == n)
			return (1);
		i++;
	}
	return (0);
}

void	mn_a_l_b(t_p1 **a, t_p1 **b, int nb)
{
	while (nb != (*a)->arry[(*a)->top])
	{
		rotat_stack(*a, "ra\n");
	}
	push_top(*a, *b, "pb\n");
}
